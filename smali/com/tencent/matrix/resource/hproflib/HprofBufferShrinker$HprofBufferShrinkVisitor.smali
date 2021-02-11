.class Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;
.super Lcom/tencent/matrix/resource/hproflib/HprofVisitor;
.source "HprofBufferShrinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HprofBufferShrinkVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;Lcom/tencent/matrix/resource/hproflib/HprofWriter;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;->this$0:Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker;

    .line 347
    invoke-direct {p0, p2}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V

    return-void
.end method


# virtual methods
.method public visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
    .locals 1

    .line 352
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor$1;-><init>(Lcom/tencent/matrix/resource/hproflib/HprofBufferShrinker$HprofBufferShrinkVisitor;Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V

    return-object v0
.end method
