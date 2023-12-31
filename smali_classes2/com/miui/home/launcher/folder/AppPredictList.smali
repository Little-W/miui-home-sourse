.class public final Lcom/miui/home/launcher/folder/AppPredictList;
.super Ljava/lang/Object;
.source "AppPredictList.kt"


# instance fields
.field private app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/miui/home/launcher/folder/AppPredictList;-><init>([Lcom/miui/home/launcher/folder/AppPredictItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([Lcom/miui/home/launcher/folder/AppPredictItem;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/miui/home/launcher/folder/AppPredictItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    check-cast p1, [Lcom/miui/home/launcher/folder/AppPredictItem;

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/AppPredictList;-><init>([Lcom/miui/home/launcher/folder/AppPredictItem;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/miui/home/launcher/folder/AppPredictList;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/home/launcher/folder/AppPredictList;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    iget-object p1, p1, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getApp_list()[Lcom/miui/home/launcher/folder/AppPredictItem;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppPredictList(app_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/AppPredictList;->app_list:[Lcom/miui/home/launcher/folder/AppPredictItem;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
