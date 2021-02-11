.class public final enum Lcom/miui/home/launcher/common/IconDisabledFilter$State;
.super Ljava/lang/Enum;
.source "IconDisabledFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/IconDisabledFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/common/IconDisabledFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/common/IconDisabledFilter$State;

.field public static final enum DISABLED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

.field public static final enum FAST_SCROLL_HIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

.field public static final enum FAST_SCROLL_UNHIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

.field public static final enum NORMAL:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

.field public static final enum PRESSED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;


# instance fields
.field public final brightness:F

.field public final desaturation:F

.field public final viewScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 34
    new-instance v6, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/common/IconDisabledFilter$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v6, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->NORMAL:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    .line 35
    new-instance v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const-string v8, "PRESSED"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x3ec8c8c9

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/launcher/common/IconDisabledFilter$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->PRESSED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    .line 36
    new-instance v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const-string v2, "FAST_SCROLL_HIGHLIGHTED"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const v6, 0x3f933333    # 1.15f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/common/IconDisabledFilter$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    .line 37
    new-instance v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const-string v8, "FAST_SCROLL_UNHIGHLIGHTED"

    const/4 v9, 0x3

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/launcher/common/IconDisabledFilter$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    .line 38
    new-instance v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const-string v2, "DISABLED"

    const/4 v3, 0x4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/common/IconDisabledFilter$State;-><init>(Ljava/lang/String;IFFF)V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->DISABLED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v0, 0x5

    .line 32
    new-array v0, v0, [Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->NORMAL:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->PRESSED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->FAST_SCROLL_HIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->FAST_SCROLL_UNHIGHLIGHTED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->DISABLED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->$VALUES:[Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->desaturation:F

    .line 49
    iput p4, p0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->brightness:F

    .line 50
    iput p5, p0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->viewScale:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/common/IconDisabledFilter$State;
    .locals 1

    .line 32
    const-class v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/common/IconDisabledFilter$State;
    .locals 1

    .line 32
    sget-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->$VALUES:[Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/common/IconDisabledFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    return-object v0
.end method
