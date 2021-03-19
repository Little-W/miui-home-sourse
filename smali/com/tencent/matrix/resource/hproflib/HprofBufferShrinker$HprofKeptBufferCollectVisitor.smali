.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;
.super Lcom/tencent/matrix/resource/hproflib/HprofVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HprofKeptBufferCollectVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    const/4 p1, 0x0

    .line 250
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/matrix/resource/hproflib/model/ID;

    .line 325
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 326
    iget-object v4, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v4}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1100(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v2}, Lcom/tencent/matrix/resource/common/utils/DigestUtil;->getMD5String([B)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/matrix/resource/hproflib/model/ID;

    if-nez v4, :cond_1

    .line 333
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {v0}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
    .locals 0

    .line 255
    new-instance p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor$1;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofKeptBufferCollectVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-object p1
.end method
