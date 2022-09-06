.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6BVsty90MeWkbOwORy9ZD5tqPIw;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->lambda$execute$1(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
