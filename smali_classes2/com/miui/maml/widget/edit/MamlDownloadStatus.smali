.class public final Lcom/miui/maml/widget/edit/MamlDownloadStatus;
.super Ljava/lang/Object;
.source "MamlDownloadStatus.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final errorMsg:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final mamlVersion:I

.field private final progressPercent:I

.field private final state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    iput p2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    iput p3, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    iput p4, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    iput-object p5, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/MamlDownloadStatus;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/Object;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->copy(Ljava/lang/String;IIILjava/lang/String;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IIILjava/lang/String;)Lcom/miui/maml/widget/edit/MamlDownloadStatus;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/widget/edit/MamlDownloadStatus;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    iget v1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    iget v1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    iget v1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMamlVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    return v0
.end method

.method public final getProgressPercent()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MamlDownloadStatus(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mamlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->mamlVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progressPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->progressPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/MamlDownloadStatus;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
