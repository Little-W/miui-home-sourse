.class public final enum Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum BLUETOOTH:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum DUMMY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum ETHERNET:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_CBS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_DUN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_EMERGENCY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_FOTA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_HIPRI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_IA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_IMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_MMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_SUPL:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum PROXY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum VPN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum WIFI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum WIFI_P2P:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field public static final enum WIMAX:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

.field private static final valueMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v1, 0x0

    const-string v2, "MOBILE"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 27
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 28
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v3, 0x2

    const-string v4, "MOBILE_MMS"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_MMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 29
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v4, 0x3

    const-string v5, "MOBILE_SUPL"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_SUPL:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 30
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v5, 0x4

    const-string v6, "MOBILE_DUN"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_DUN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 31
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v6, 0x5

    const-string v7, "MOBILE_HIPRI"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_HIPRI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 32
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v7, 0x6

    const-string v8, "WIMAX"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIMAX:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 33
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v8, 0x7

    const-string v9, "BLUETOOTH"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->BLUETOOTH:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 34
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v9, 0x8

    const-string v10, "DUMMY"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->DUMMY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 35
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v10, 0x9

    const-string v11, "ETHERNET"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->ETHERNET:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 36
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v11, 0xa

    const-string v12, "MOBILE_FOTA"

    invoke-direct {v0, v12, v11, v11}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_FOTA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 37
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v12, 0xb

    const-string v13, "MOBILE_IMS"

    invoke-direct {v0, v13, v12, v12}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 38
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v13, 0xc

    const-string v14, "MOBILE_CBS"

    invoke-direct {v0, v14, v13, v13}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_CBS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 39
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0xd

    const-string v15, "WIFI_P2P"

    invoke-direct {v0, v15, v14, v14}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI_P2P:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 40
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v15, 0xe

    const-string v14, "MOBILE_IA"

    invoke-direct {v0, v14, v15, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 41
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const-string v14, "MOBILE_EMERGENCY"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_EMERGENCY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 42
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const-string v13, "PROXY"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->PROXY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 43
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const-string v13, "VPN"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->VPN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 45
    new-instance v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const-string v13, "NONE"

    const/16 v14, 0x12

    const/4 v15, -0x1

    invoke-direct {v0, v13, v14, v15}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 25
    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v1

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v2

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_MMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v3

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_SUPL:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v4

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_DUN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v5

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_HIPRI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v6

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIMAX:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v7

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->BLUETOOTH:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v8

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->DUMMY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v9

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->ETHERNET:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v10

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_FOTA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v11

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    aput-object v13, v0, v12

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_CBS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0xc

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI_P2P:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0xd

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0xe

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_EMERGENCY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0xf

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->PROXY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0x10

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->VPN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0x11

    aput-object v13, v0, v14

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v14, 0x12

    aput-object v13, v0, v14

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->$VALUES:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    .line 52
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v13, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_MMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_SUPL:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_DUN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_HIPRI:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIMAX:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->BLUETOOTH:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->DUMMY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->ETHERNET:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_FOTA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IMS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_CBS:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->WIFI_P2P:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_IA:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->MOBILE_EMERGENCY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->PROXY:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->VPN:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;
    .locals 1

    .line 83
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;
    .locals 1

    .line 25
    const-class v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->$VALUES:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->value:I

    return p0
.end method
