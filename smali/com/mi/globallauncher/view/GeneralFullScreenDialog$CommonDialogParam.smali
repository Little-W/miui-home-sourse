.class Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;
.super Ljava/lang/Object;
.source "GeneralFullScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
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

.field onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field positiveButtonListener:Landroid/view/View$OnClickListener;

.field positiveButtonText:I

.field positiveButtonTextColor:I

.field public title:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 270
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->gravity:I

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonText:I

    .line 274
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonText:I

    .line 278
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 281
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonTextColor:I

    .line 284
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->title:I

    .line 289
    iput v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->customView:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$1;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAnimation()Z
    .locals 2

    .line 311
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->animation:I

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

    .line 303
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonText:I

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

    .line 299
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonText:I

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

    .line 307
    iget v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->customView:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
