.class Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->gravity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    iput v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/globallauncher/view/GeneralDialog$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;-><init>()V

    return-void
.end method


# virtual methods
.method public hasAnimation()Z
    .locals 1

    iget p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->animation:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasNegativeButton()Z
    .locals 1

    iget p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasPositiveButton()Z
    .locals 1

    iget p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomView()Z
    .locals 1

    iget p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
