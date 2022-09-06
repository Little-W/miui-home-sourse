.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$F8JZ8sxocgFXjLJqZLOMh0VNkT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$F8JZ8sxocgFXjLJqZLOMh0VNkT4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$F8JZ8sxocgFXjLJqZLOMh0VNkT4;->f$0:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$66(Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
