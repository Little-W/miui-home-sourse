.class public Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;
.super Ljava/lang/Object;
.source "HprofHeapDumpVisitor.java"


# instance fields
.field protected final hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;


# direct methods
.method public constructor <init>(Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpBasicObj(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpClass(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;I[Lcom/tencent/matrix/resource/hproflib/model/Field;[Lcom/tencent/matrix/resource/hproflib/model/Field;)V
    .locals 8

    .line 78
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 79
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpClass(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;Lcom/tencent/matrix/resource/hproflib/model/ID;I[Lcom/tencent/matrix/resource/hproflib/model/Field;[Lcom/tencent/matrix/resource/hproflib/model/Field;)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpInfo(ILcom/tencent/matrix/resource/hproflib/model/ID;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpInfo(ILcom/tencent/matrix/resource/hproflib/model/ID;)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpInstance(Lcom/tencent/matrix/resource/hproflib/model/ID;ILcom/tencent/matrix/resource/hproflib/model/ID;[B)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpJavaFrame(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJavaFrame(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpJniLocal(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJniLocal(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpJniMonitor(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpJniMonitor(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpNativeStack(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpNativeStack(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpObjectArray(Lcom/tencent/matrix/resource/hproflib/model/ID;IILcom/tencent/matrix/resource/hproflib/model/ID;[B)V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpObjectArray(Lcom/tencent/matrix/resource/hproflib/model/ID;IILcom/tencent/matrix/resource/hproflib/model/ID;[B)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 97
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpPrimitiveArray(ILcom/tencent/matrix/resource/hproflib/model/ID;III[B)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpThreadBlock(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpThreadBlock(Lcom/tencent/matrix/resource/hproflib/model/ID;I)V

    :cond_0
    return-void
.end method

.method public visitHeapDumpThreadObject(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->hdv:Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/matrix/resource/hproflib/HprofHeapDumpVisitor;->visitHeapDumpThreadObject(Lcom/tencent/matrix/resource/hproflib/model/ID;II)V

    :cond_0
    return-void
.end method
