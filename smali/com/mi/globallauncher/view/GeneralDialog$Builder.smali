.class public Lcom/mi/globallauncher/view/GeneralDialog$Builder;
.super Ljava/lang/Object;
.source "GeneralDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/GeneralDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;-><init>(Lcom/mi/globallauncher/view/GeneralDialog$1;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    .line 156
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, p0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public create()Lcom/mi/globallauncher/view/GeneralDialog;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    invoke-static {p0}, Lcom/mi/globallauncher/view/GeneralDialog;->access$100(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object p0

    return-object p0
.end method

.method public enableMask(Z)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-boolean p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->enableMask:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->contentRes:I

    return-object p0
.end method

.method public setCustomView(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    return-object p0
.end method

.method public setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->disAmount:F

    return-object p0
.end method

.method public setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->gravity:I

    return-object p0
.end method

.method public setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    .line 183
    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 184
    iput p2, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 177
    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p2, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 171
    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    .line 172
    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 165
    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    return-object p0
.end method

.method public setWindowAnimation(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->animation:I

    return-object p0
.end method
