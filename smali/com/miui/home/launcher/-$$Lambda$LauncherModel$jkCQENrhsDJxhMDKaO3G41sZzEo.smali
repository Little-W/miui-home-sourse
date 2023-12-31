.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/HashMap;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$1:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$1:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$jkCQENrhsDJxhMDKaO3G41sZzEo;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/LauncherModel;->lambda$resizeAppIconDatabaseWhitUICallback$7(Ljava/util/HashMap;Lcom/miui/home/launcher/Launcher;Ljava/util/function/Consumer;)V

    return-void
.end method
