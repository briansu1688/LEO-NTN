%% function for calculate free-space path loss

% calculate_FSPL Computes the Free Space Path Loss (FSPL) in dB
function [FSPL] = FSPL_model(signal_fq, d)

    % parameters
    c = 3e8;    % speed of light 3*10^8 m/s
    lambda = physconst('lightspeed')/signal_fq; % lambda = c/f
    
    % (MATLAB model 1)Free Space Path Loss (FSPL) calculation in dB
    % FSPL = fspl(d,lambda);

    % (Paper formula)theoretical free-space path loss given by following formula
    % fc is the center frequency in MHz and d is the distance in km
    FSPL = 32.45 + 20*log(signal_fq) + 20*log(d);

end