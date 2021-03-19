.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;
.super Lcom/tencent/matrix/resource/hproflib/HprofVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HprofInfoCollectVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    const/4 p1, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    return-void
.end method


# virtual methods
.method public visitHeader(Ljava/lang/String;IJ)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$002(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;I)I

    .line 205
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2}, Lcom/tencent/matrix/resource/hproflib/model/ID;->createNullID(I)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$102(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    return-void
.end method

.method public visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
    .locals 0

    .line 234
    new-instance p1, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor$1;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-object p1
.end method

.method public visitLoadClassRecord(ILcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;IJ)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$700(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$702(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$800(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$500(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$500(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/tencent/matrix/resource/hproflib/model/ID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 228
    iget-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$802(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    :cond_1
    :goto_0
    return-void
.end method

.method public visitStringRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/String;IJ)V
    .locals 0

    .line 210
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$200(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p3, "android.graphics.Bitmap"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 211
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$202(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_0

    .line 212
    :cond_0
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$300(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p3

    if-nez p3, :cond_1

    const-string p3, "mBuffer"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 213
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$302(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_0

    .line 214
    :cond_1
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$400(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "mRecycled"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 215
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$402(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_0

    .line 216
    :cond_2
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$500(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p3, "java.lang.String"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 217
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$502(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    goto :goto_0

    .line 218
    :cond_3
    iget-object p3, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p3}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$600(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    move-result-object p3

    if-nez p3, :cond_4

    const-string p3, "value"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 219
    iget-object p2, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofInfoCollectVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    invoke-static {p2, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;->access$602(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/model/ID;)Lcom/tencent/matrix/resource/hproflib/model/ID;

    :cond_4
    :goto_0
    return-void
.end method
