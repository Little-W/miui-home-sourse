.class public Lmiui/home/lib/dialog/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;,
        Lmiui/home/lib/dialog/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field final mAlert:Lmiui/home/lib/dialog/AlertController;

.field private mOnDismiss:Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 94
    invoke-static {p1, p2}, Lmiui/home/lib/dialog/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 1138
    new-instance p2, Lmiui/home/lib/dialog/-$$Lambda$AlertDialog$79lZ1pVm6Sluzo5WrEnDMw085kM;

    invoke-direct {p2, p0}, Lmiui/home/lib/dialog/-$$Lambda$AlertDialog$79lZ1pVm6Sluzo5WrEnDMw085kM;-><init>(Lmiui/home/lib/dialog/AlertDialog;)V

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertDialog;->mOnDismiss:Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    .line 95
    new-instance p2, Lmiui/home/lib/dialog/AlertController;

    invoke-direct {p0, p1}, Lmiui/home/lib/dialog/AlertDialog;->parseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lmiui/home/lib/dialog/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object p2, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    return-void
.end method

.method static synthetic access$000(Lmiui/home/lib/dialog/AlertDialog;)Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;
    .locals 0

    .line 80
    iget-object p0, p0, Lmiui/home/lib/dialog/AlertDialog;->mOnDismiss:Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lmiui/home/lib/dialog/AlertDialog;)V
    .locals 1

    .line 1139
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->realDismiss()V

    :cond_0
    return-void
.end method

.method private parseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    if-nez p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/ContextThemeWrapper;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getContext()Landroid/content/Context;

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

    .line 117
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Lmiui/home/lib/dialog/R$attr;->miuiAlertDialogTheme:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1162
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog;->mOnDismiss:Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertController;->dismiss(Lmiui/home/lib/dialog/dialoganim/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1167
    new-instance v1, Lmiui/home/lib/dialog/AlertDialog$1;

    invoke-direct {v1, p0}, Lmiui/home/lib/dialog/AlertDialog$1;-><init>(Lmiui/home/lib/dialog/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1177
    :cond_2
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 1180
    :cond_3
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->realDismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 301
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method getAssociatedActivity()Landroid/app/Activity;
    .locals 3

    .line 1193
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1196
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1197
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1199
    :cond_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 1200
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

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .line 135
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public isChecked()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1118
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onAttachedToWindow()V

    .line 1119
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    iget-boolean v1, v1, Lmiui/home/lib/dialog/AlertController;->mHapticFeedbackEnabled:Z

    if-eqz v1, :cond_0

    .line 1121
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    .line 1123
    :cond_0
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 285
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertController;->isDialogImmersive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 288
    :cond_0
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {p1}, Lmiui/home/lib/dialog/AlertController;->installContent()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1134
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onDetachedFromWindow()V

    .line 1135
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->onDetachedFromWindow()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStart()V

    .line 310
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 315
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 316
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertController;->onStop()V

    return-void
.end method

.method realDismiss()V
    .locals 0

    .line 1185
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 214
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lmiui/home/lib/dialog/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 1128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCancelable(Z)V

    .line 1129
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 1244
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 1245
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 1249
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method
