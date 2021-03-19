.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/ArrayList;

.field private final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$0:Lcom/miui/home/launcher/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LoaderTask$dxdvRu-RjWd9T9chcgRPQu7NeMs;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->lambda$loadAndBindMissingIcons$0(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
