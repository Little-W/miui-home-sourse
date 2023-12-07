.class public Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;-><init>(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$1;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public create()Lcom/mi/globallauncher/view/GeneralFullScreenDialog;
    .locals 0

    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    invoke-static {p0}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog;->access$100(Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog;

    move-result-object p0

    return-object p0
.end method

.method public enableMask(Z)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput-boolean p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->enableMask:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->contentRes:I

    return-object p0
.end method

.method public setCustomView(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->customView:I

    return-object p0
.end method

.method public setDisAmount(F)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->disAmount:F

    return-object p0
.end method

.method public setGravity(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->gravity:I

    return-object p0
.end method

.method public setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonText:I

    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    iput p2, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->negativeButtonTextColor:I

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p2, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonTextColor:I

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonText:I

    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->title:I

    return-object p0
.end method

.method public setWindowAnimation(I)Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralFullScreenDialog$CommonDialogParam;->animation:I

    return-object p0
.end method
