.class public final Lcom/xiaomi/dist/handoff/AppMeta;
.super Ljava/lang/Object;


# instance fields
.field private final androidPackageName:Ljava/lang/String;

.field private final appId:I

.field private final iconDrawable:Landroid/graphics/drawable/Drawable;

.field private final iconUri:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final supportHandoff:Z

.field private final winPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    iput-object p2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/dist/handoff/AppMeta;->winPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean p7, p0, Lcom/xiaomi/dist/handoff/AppMeta;->supportHandoff:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/xiaomi/dist/handoff/AppMeta;

    iget v2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    iget v3, p1, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->winPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/AppMeta;->winPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    return p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->winPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isSupportHandoff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->supportHandoff:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppMeta{appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->androidPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", winPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->winPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/dist/handoff/AppMeta;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportHandoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/xiaomi/dist/handoff/AppMeta;->supportHandoff:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
