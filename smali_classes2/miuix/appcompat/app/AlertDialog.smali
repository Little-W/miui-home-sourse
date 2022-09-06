.class public Lmiuix/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;,
        Lmiuix/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field final mAlert:Lmiuix/appcompat/app/AlertController;

.field private mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 93
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 994
    new-instance p2, Lmiuix/appcompat/app/-$$Lambda$AlertDialog$O9PhoTyRypmD8HuosByEpkhTJTg;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/-$$Lambda$AlertDialog$O9PhoTyRypmD8HuosByEpkhTJTg;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    .line 94
    new-instance p2, Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->parseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lmiuix/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    .locals 0

    .line 79
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    .line 995
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    :cond_0
    return-void
.end method

.method private parseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/ContextThemeWrapper;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p1

    .line 116
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$attr;->miuiAlertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 118
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1012
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1013
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    .line 1017
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1018
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    .line 1021
    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1023
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$1;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 268
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 271
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method getAssociatedActivity()Landroid/app/Activity;
    .locals 3

    .line 1046
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1047
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1049
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1050
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1052
    :cond_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 1053
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 975
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onAttachedToWindow()V

    .line 976
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_0

    .line 978
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 252
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 255
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertController;->installContent()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 990
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onDetachedFromWindow()V

    .line 991
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 279
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 287
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 1

    .line 292
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 293
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 299
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStop()V

    return-void
.end method

.method realDismiss()V
    .locals 0

    .line 1038
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 984
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 985
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 1078
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 1079
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method
