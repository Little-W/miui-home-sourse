.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$YylfrcYNr5BjXUa-SjeaaWq7s3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YylfrcYNr5BjXUa-SjeaaWq7s3w;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YylfrcYNr5BjXUa-SjeaaWq7s3w;->f$0:Ljava/util/List;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppsRemoved$49(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
