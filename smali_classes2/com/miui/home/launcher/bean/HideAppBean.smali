.class public final Lcom/miui/home/launcher/bean/HideAppBean;
.super Ljava/lang/Object;
.source "HideAppBean.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppBean.kt\ncom/miui/home/launcher/bean/HideAppBean\n*L\n1#1,28:1\n*E\n"
.end annotation


# instance fields
.field private activityName:Ljava/lang/String;

.field private mHashCode:I

.field private packageName:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialNumber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 26
    iget-object p2, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->mHashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 13
    instance-of v0, p1, Lcom/miui/home/launcher/bean/HideAppBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    check-cast p1, Lcom/miui/home/launcher/bean/HideAppBean;

    iget-object v2, p1, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getActivityName()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->mHashCode:I

    return p0
.end method

.method public final setActivityName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setSerialNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HideAppBean(packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', activityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->mHashCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
