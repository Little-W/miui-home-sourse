.class public final enum Lcom/miui/home/launcher/common/ScreenMode;
.super Ljava/lang/Enum;
.source "FoldScreenModeObservable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/common/ScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/common/ScreenMode;

.field public static final enum LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

.field public static final enum NORMAL:Lcom/miui/home/launcher/common/ScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/home/launcher/common/ScreenMode;

    new-instance v1, Lcom/miui/home/launcher/common/ScreenMode;

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/home/launcher/common/ScreenMode;

    const-string v2, "LARGE_SCREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/common/ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/common/ScreenMode;->$VALUES:[Lcom/miui/home/launcher/common/ScreenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    const-class v0, Lcom/miui/home/launcher/common/ScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/ScreenMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/common/ScreenMode;->$VALUES:[Lcom/miui/home/launcher/common/ScreenMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/common/ScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/common/ScreenMode;

    return-object v0
.end method
