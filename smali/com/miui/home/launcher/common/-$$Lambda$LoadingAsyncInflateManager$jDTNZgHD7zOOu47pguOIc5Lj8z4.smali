.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
