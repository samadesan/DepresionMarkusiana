<div class="modal fade" id="playerModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-body p-4">
                <div class="modal-header-custom d-flex justify-content-between align-items-center">
                    <h3 id="modalSongTitle" class="text-white m-0 fw-bold"></h3>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                </div>

                <div id="playlistContainer" class="custom-scrollbar mb-4" style="max-height: 300px; overflow-y: auto;">
                </div>

                <div class="player-controls-container position-relative">
                    <div class="d-flex justify-content-between mb-1">
                        <span id="currentTrackTime" class="code-font text-accent">00:00</span>
                        <span id="totalTrackTime" class="code-font text-secondary">00:00</span>
                    </div>
                    <div class="progress-container" id="progressWrapper">
                        <div class="progress-bar-fill" id="progressBar"></div>
                    </div>

                    <div class="volume-box d-none d-md-flex align-items-center gap-2 position-absolute end-0" style="margin-right: -110px;">
                        <i class="bi bi-volume-up text-secondary small"></i>
                        <input type="range" id="volumeSlider" min="0" max="1" step="0.1" value="1" class="custom-range">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>