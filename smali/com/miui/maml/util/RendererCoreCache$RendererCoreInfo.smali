.class public Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Lcom/miui/maml/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Lcom/miui/maml/RendererCore;


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 43
    iput-wide v0, p0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 50
    iput-object p1, p0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    return-void
.end method
