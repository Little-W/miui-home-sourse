.class Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseIndex"
.end annotation


# static fields
.field private static final UNKNOWN_BUCKET_INDEX:I = 0x24


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 103
    sget p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;->UNKNOWN_BUCKET_INDEX:I

    return p0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    return p0

    .line 109
    :cond_1
    sget p0, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat$BaseIndex;->UNKNOWN_BUCKET_INDEX:I

    return p0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p0, p1, 0x1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    .line 116
    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
