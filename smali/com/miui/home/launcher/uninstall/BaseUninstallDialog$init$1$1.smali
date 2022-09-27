.class final Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;
.super Ljava/lang/Object;
.source "BaseUninstallDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;

    iget-object p1, p1, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;

    iget-object v0, v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->onPositiveClick(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method
