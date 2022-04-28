.class public final Lcom/miui/home/launcher/bean/HideAppBean;
.super Ljava/lang/Object;
.source "HideAppBean.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppBean.kt\ncom/miui/home/launcher/bean/HideAppBean\n*L\n1#1,24:1\n*E\n"
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

    .line 22
    new-array p1, p1, [Ljava/lang/String;

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

    if-eqz v0, :cond_1

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
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final getActivityName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/miui/home/launcher/bean/HideAppBean;->mHashCode:I

    return v0
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
