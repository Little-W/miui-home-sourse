.class public abstract Lcom/miui/home/launcher/UninstallDropTargetMode;
.super Ljava/lang/Object;
.source "UninstallDropTargetMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;,
        Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterValidatedInfos(Ljava/util/List;Ljava8/util/function/Predicate;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava8/util/function/Predicate<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 26
    invoke-interface {p1, p2}, Ljava8/util/stream/Stream;->filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 27
    invoke-static {}, Ljava8/util/stream/Collectors;->toList()Ljava8/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava8/util/stream/Stream;->collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public abstract getIconResId()I
.end method

.method public abstract getLabelResId()I
.end method

.method public abstract onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z
.end method
