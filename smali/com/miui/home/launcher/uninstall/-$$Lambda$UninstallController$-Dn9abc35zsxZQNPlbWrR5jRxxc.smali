.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$-Dn9abc35zsxZQNPlbWrR5jRxxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$-Dn9abc35zsxZQNPlbWrR5jRxxc;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$-Dn9abc35zsxZQNPlbWrR5jRxxc;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$-Dn9abc35zsxZQNPlbWrR5jRxxc;->f$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$-Dn9abc35zsxZQNPlbWrR5jRxxc;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/uninstall/UninstallController;->lambda$uninstallApps$158(Lcom/miui/home/launcher/uninstall/UninstallController;Lcom/miui/home/launcher/ShortcutInfo;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
