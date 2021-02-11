.class public final Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
.super Ljava/lang/Object;
.source "AppMethodBeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/core/AppMethodBeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexRecord"
.end annotation


# instance fields
.field public index:I

.field public isValid:Z

.field private next:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    .line 378
    iput p1, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->next:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-object p0
.end method

.method static synthetic access$902(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->next:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\tisValid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
