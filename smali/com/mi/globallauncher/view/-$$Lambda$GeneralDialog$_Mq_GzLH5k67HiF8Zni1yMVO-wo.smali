.class public final synthetic Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

.field private final synthetic f$1:Lcom/mi/globallauncher/view/GeneralDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;->f$0:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iput-object p2, p0, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;->f$1:Lcom/mi/globallauncher/view/GeneralDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;->f$0:Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;

    iget-object v1, p0, Lcom/mi/globallauncher/view/-$$Lambda$GeneralDialog$_Mq_GzLH5k67HiF8Zni1yMVO-wo;->f$1:Lcom/mi/globallauncher/view/GeneralDialog;

    invoke-static {v0, v1, p1}, Lcom/mi/globallauncher/view/GeneralDialog;->lambda$createDialog$0(Lcom/mi/globallauncher/view/GeneralDialog$CommonDialogParam;Lcom/mi/globallauncher/view/GeneralDialog;Landroid/view/View;)V

    return-void
.end method
