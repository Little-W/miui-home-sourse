.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$9RqMgZRmIqJwP_Oi5LMRNhtpN08;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$showDialog$2(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
