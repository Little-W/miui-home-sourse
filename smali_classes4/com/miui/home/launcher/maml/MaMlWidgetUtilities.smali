.class public Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;
.super Ljava/lang/Object;
.source "MaMlWidgetUtilities.java"


# static fields
.field private static CLOCK_MAMLS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "bc128052-1c50-4da8-b920-0728aa957a98"

    const-string v2, "060fd4b1-8f58-4af2-a735-75c33090066a"

    const-string v3, "b9884f60-2597-4e66-b94e-cffe97be3b69"

    const-string v4, "d7b7cf12-29ab-4cd6-afe5-f006d5112d48"

    const-string v5, "7165281e-a932-42ac-a068-f35238a4e6f0"

    const-string v6, "52b8238d-848f-4608-a0e6-28458d4b1f2c"

    const-string v7, "7c194239-ef61-4760-848e-8997409a049b"

    const-string v8, "48bcd7fb-c679-456c-a78e-dde4433defdd"

    const-string v9, "eb043630-44cd-4012-87d8-bd35f08d31eb"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    return-void
.end method

.method public static isClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 41
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getWidgetCategory()Ljava/lang/String;

    move-result-object p0

    const-string v0, "clock"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMaMlClassicClock(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 37
    sget-object v0, Lcom/miui/home/launcher/maml/MaMlWidgetUtilities;->CLOCK_MAMLS:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
