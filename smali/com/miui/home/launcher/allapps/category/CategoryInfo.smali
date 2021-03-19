.class public Lcom/miui/home/launcher/allapps/category/CategoryInfo;
.super Ljava/lang/Object;
.source "CategoryInfo.java"


# instance fields
.field private mCategoryId:I

.field private mCategoryName:Ljava/lang/String;

.field private mPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    .line 12
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryName:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mPriority:I

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

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    check-cast p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 41
    iget v2, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    iget p1, p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCategoryId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CategoryInfo{mCategoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCategoryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
