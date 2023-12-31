.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderInfo;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

.field private final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$0:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$7elYt4BOCP_ACrubmJmiyyvoZug;->f$3:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeFolderDatabaseWhitUICallback$4(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/util/function/Consumer;)V

    return-void
.end method
