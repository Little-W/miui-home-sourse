.class public Lmiui/home/lib/dialog/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/home/lib/dialog/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lmiui/home/lib/dialog/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    invoke-static {p1, v0}, Lmiui/home/lib/dialog/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiui/home/lib/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Lmiui/home/lib/dialog/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 365
    invoke-static {p1, p2}, Lmiui/home/lib/dialog/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiui/home/lib/dialog/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    .line 366
    iput p2, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lmiui/home/lib/dialog/AlertDialog;
    .locals 3

    .line 1083
    new-instance v0, Lmiui/home/lib/dialog/AlertDialog;

    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiui/home/lib/dialog/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1084
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v2, v0, Lmiui/home/lib/dialog/AlertDialog;->mAlert:Lmiui/home/lib/dialog/AlertController;

    invoke-virtual {v1, v2}, Lmiui/home/lib/dialog/AlertController$AlertParams;->apply(Lmiui/home/lib/dialog/AlertController;)V

    .line 1085
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setCancelable(Z)V

    .line 1086
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1087
    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1089
    :cond_0
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1090
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1091
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1092
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setOnShowAnimListener(Lmiui/home/lib/dialog/AlertDialog$OnDialogShowAnimListener;)V

    .line 1093
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1094
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lmiui/home/lib/dialog/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public setCancelable(Z)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 696
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 480
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIsChecked:Z

    .line 481
    iput-object p2, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setIconAttribute(I)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 3

    .line 522
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 523
    iget-object v1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 524
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setMessage(I)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 2

    .line 434
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 444
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 2

    .line 562
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 563
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p2, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 575
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 576
    iput-object p2, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 2

    .line 588
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 589
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p2, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 717
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 727
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 738
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 2

    .line 536
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 537
    iget-object p1, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p2, p1, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 549
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 550
    iput-object p2, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 2

    .line 388
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iget-object v1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 403
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiui/home/lib/dialog/AlertDialog$Builder;
    .locals 1

    .line 1066
    iget-object v0, p0, Lmiui/home/lib/dialog/AlertDialog$Builder;->P:Lmiui/home/lib/dialog/AlertController$AlertParams;

    iput-object p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 1067
    iput p1, v0, Lmiui/home/lib/dialog/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lmiui/home/lib/dialog/AlertDialog;
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lmiui/home/lib/dialog/AlertDialog$Builder;->create()Lmiui/home/lib/dialog/AlertDialog;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Lmiui/home/lib/dialog/AlertDialog;->show()V

    return-object v0
.end method
