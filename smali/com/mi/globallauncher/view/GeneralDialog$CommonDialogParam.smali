.class Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;
.super Ljava/lang/Object;
.source "GeneralDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/GeneralDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommonDialogParam"
.end annotation


# instance fields
.field public activity:Landroid/app/Activity;

.field public animation:I

.field content:Ljava/lang/String;

.field contentRes:I

.field customView:I

.field public disAmount:F

.field enableMask:Z

.field public gravity:I

.field negativeButtonListener:Landroid/view/View$OnClickListener;

.field negativeButtonText:I

.field negativeButtonTextColor:I

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field positiveButtonListener:Landroid/view/View$OnClickListener;

.field positiveButtonText:I

.field positiveButtonTextColor:I

.field public title:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 316
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->gravity:I

    const/4 v0, -0x1

    .line 317
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    .line 320
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    .line 324
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 327
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    .line 330
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    .line 335
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/globallauncher/view/GeneralDialog$1;)V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAnimation()Z
    .locals 2

    .line 358
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->animation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasNegativeButton()Z
    .locals 2

    .line 350
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasPositiveButton()Z
    .locals 2

    .line 346
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCustomView()Z
    .locals 2

    .line 354
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
