.class public final synthetic Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/-$$Lambda$UninstallController$5$qvJfATj3GipxYehUbebnkYb77IM;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/uninstall/UninstallController$5;->lambda$accept$0(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method
