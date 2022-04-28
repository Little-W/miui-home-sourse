.class public final enum Lcom/miui/home/launcher/DeviceType;
.super Ljava/lang/Enum;
.source "DeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/DeviceType;

.field public static final enum FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

.field public static final enum PAD:Lcom/miui/home/launcher/DeviceType;

.field public static final enum PHONE:Lcom/miui/home/launcher/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/miui/home/launcher/DeviceType;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    .line 15
    new-instance v0, Lcom/miui/home/launcher/DeviceType;

    const-string v1, "PAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    .line 20
    new-instance v0, Lcom/miui/home/launcher/DeviceType;

    const-string v1, "FOLDABLE_DEVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/miui/home/launcher/DeviceType;

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PAD:Lcom/miui/home/launcher/DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->FOLDABLE_DEVICE:Lcom/miui/home/launcher/DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/launcher/DeviceType;->$VALUES:[Lcom/miui/home/launcher/DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/DeviceType;
    .locals 1

    .line 6
    const-class v0, Lcom/miui/home/launcher/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/DeviceType;
    .locals 1

    .line 6
    sget-object v0, Lcom/miui/home/launcher/DeviceType;->$VALUES:[Lcom/miui/home/launcher/DeviceType;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/DeviceType;

    return-object v0
.end method
