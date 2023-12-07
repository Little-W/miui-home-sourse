.class public interface abstract Lcom/mi/globallauncher/branchInterface/IBranchSettingManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract branchAutoAddAppShortcut()Z
.end method

.method public abstract branchSettingChange(Ljava/lang/Boolean;Landroid/app/Activity;Z)V
.end method

.method public abstract controlBranchSetting()V
.end method

.method public abstract privacyDialogDestroy()V
.end method

.method public abstract setBranchSettingCallBack(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mi/globallauncher/branchInterface/IBranchSettingCallBack;",
            ">;)V"
        }
    .end annotation
.end method
