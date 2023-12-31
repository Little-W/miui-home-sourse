.class public final Lcom/miui/maml/widget/edit/DateSetSaveConfig;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# instance fields
.field private date:J

.field private final name:Ljava/lang/String;

.field private final repeatName:Ljava/lang/String;

.field private repeatValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    iput-object p4, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    iput p5, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/lang/String;JLjava/lang/String;IILjava/lang/Object;)Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p5, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    :cond_3
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p7

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->copy(Ljava/lang/String;JLjava/lang/String;I)Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    return p0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;I)Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 6

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    iget-object v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    iget-wide v2, p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    iget p1, p1, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getDate()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRepeatName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRepeatValue()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDate(J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    return-void
.end method

.method public final setRepeatValue(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateSetSaveConfig(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", repeatName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->repeatValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
