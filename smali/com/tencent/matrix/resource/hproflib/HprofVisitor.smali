.class public Lcom/tencent/matrix/resource/hproflib/HprofVisitor;
.super Ljava/lang/Object;
.source "HprofVisitor.java"


# instance fields
.field protected hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;


# direct methods
.method public constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofVisitor;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    .line 30
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitHeader(Ljava/lang/String;IJ)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitHeader(Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitHeapDumpRecord(IIJ)Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitLoadClassRecord(ILcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;IJ)V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide v6, p6

    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitLoadClassRecord(ILcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;IJ)V

    :cond_0
    return-void
.end method

.method public visitStackFrameRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;IIIJ)V
    .locals 11

    move-object v0, p0

    .line 52
    iget-object v1, v0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    .line 53
    invoke-virtual/range {v1 .. v10}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStackFrameRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;IIIJ)V

    :cond_0
    return-void
.end method

.method public visitStackTraceRecord(II[Lcom/tencent/matrix/resource/hproflib/model/ID;IJ)V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStackTraceRecord(II[Lcom/tencent/matrix/resource/hproflib/model/ID;IJ)V

    :cond_0
    return-void
.end method

.method public visitStringRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/String;IJ)V
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitStringRecord(Lcom/tencent/matrix/resource/hproflib/model/ID;Ljava/lang/String;IJ)V

    :cond_0
    return-void
.end method

.method public visitUnconcernedRecord(IIJ[B)V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->hv:Lcom/tencent/matrix/resource/hproflib/HprofVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/matrix/resource/hproflib/HprofVisitor;->visitUnconcernedRecord(IIJ[B)V

    :cond_0
    return-void
.end method
