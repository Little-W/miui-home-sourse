.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;
.super Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    invoke-direct {p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-void
.end method


# virtual methods
.method public visitHeapDumpClass(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;I[Lcom/tencent/matrix/resource/hproflib/model/Field;[Lcom/tencent/matrix/resource/hproflib/model/Field;)V
    .locals 0

    .line 237
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$900(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 238
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1, p7}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$902(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;[Lcom/tencent/matrix/resource/hproflib/model/Field;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    goto :goto_0

    .line 239
    :cond_0
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1000(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p2, p2, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;->this$1:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1, p7}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$1002(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;[Lcom/tencent/matrix/resource/hproflib/model/Field;)[Lcom/tencent/matrix/resource/hproflib/model/Field;

    :cond_1
    :goto_0
    return-void
.end method
