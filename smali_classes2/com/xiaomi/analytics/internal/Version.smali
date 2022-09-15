.class public Lcom/xiaomi/analytics/internal/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/analytics/internal/Version;",
        ">;"
    }
.end annotation


# instance fields
.field public build:I

.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    .line 6
    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    :try_start_0
    const-string v2, "\\."

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    .line 18
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    const/4 v0, 0x2

    .line 19
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/analytics/internal/Version;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->major:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    .line 39
    :cond_1
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    iget v1, p1, Lcom/xiaomi/analytics/internal/Version;->minor:I

    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    return v0

    .line 42
    :cond_2
    iget v0, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    iget p1, p1, Lcom/xiaomi/analytics/internal/Version;->build:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/xiaomi/analytics/internal/Version;

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/internal/Version;->compareTo(Lcom/xiaomi/analytics/internal/Version;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/analytics/internal/Version;->build:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
