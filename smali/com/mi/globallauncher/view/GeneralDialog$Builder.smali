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

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;-><init>(Lcom/mi/globallauncher/view/GeneralDialog$1;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    .line 154
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public create()Lcom/mi/globallauncher/view/GeneralDialog;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    invoke-static {v0}, Lcom/mi/globallauncher/view/GeneralDialog;->access$100(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;)Lcom/mi/globallauncher/view/GeneralDialog;

    move-result-object v0

    return-object v0
.end method

.method public enableMask(Z)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-boolean p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->enableMask:Z

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->content:Ljava/lang/String;

    return-object p0
.end method

.method public setContentText(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->contentRes:I

    return-object p0
.end method

.method public setCustomView(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->customView:I

    return-object p0
.end method

.method public setDisAmount(F)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->disAmount:F

    return-object p0
.end method

.method public setGravity(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->gravity:I

    return-object p0
.end method

.method public setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonText:I

    .line 181
    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 182
    iput p2, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->negativeButtonTextColor:I

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setNegativeButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p2, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonTextColor:I

    .line 169
    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonText:I

    .line 170
    iput-object p3, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    const/4 v0, -0x1

    .line 163
    invoke-virtual {p0, p1, v0, p2}, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->setPositiveButton(IILandroid/view/View$OnClickListener;)Lcom/mi/globallauncher/view/GeneralDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->title:I

    return-object p0
.end method

.method public setWindowAnimation(I)Lcom/mi/globallauncher/view/GeneralDialog$Builder;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/mi/globallauncher/view/GeneralDialog$Builder;->params:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput p1, v0, Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;->animation:I

    return-object p0
.end method
