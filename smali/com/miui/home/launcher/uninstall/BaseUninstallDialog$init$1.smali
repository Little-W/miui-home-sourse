.class final Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;
.super Ljava/lang/Object;
.source "BaseUninstallDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->init(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->access$getPositiveButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$1;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;->this$0:Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;->access$getNegativeButton$p(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1$2;-><init>(Lcom/miui/home/launcher/uninstall/BaseUninstallDialog$init$1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
