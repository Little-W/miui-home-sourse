.class final enum Lcom/miui/home/recents/GestureStubView$EventPosition;
.super Ljava/lang/Enum;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/GestureStubView$EventPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/GestureStubView$EventPosition;

.field public static final enum ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

.field public static final enum BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

.field public static final enum UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Lcom/miui/home/recents/GestureStubView$EventPosition;

    const/4 v1, 0x0

    const-string v2, "UPON_NOTCH"

    invoke-direct {v0, v2, v1}, Lcom/miui/home/recents/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    new-instance v0, Lcom/miui/home/recents/GestureStubView$EventPosition;

    const/4 v2, 0x1

    const-string v3, "BELOW_NOTCH"

    invoke-direct {v0, v3, v2}, Lcom/miui/home/recents/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    new-instance v0, Lcom/miui/home/recents/GestureStubView$EventPosition;

    const/4 v3, 0x2

    const-string v4, "ALIGN_NOTCH"

    invoke-direct {v0, v4, v3}, Lcom/miui/home/recents/GestureStubView$EventPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/recents/GestureStubView$EventPosition;

    .line 150
    sget-object v4, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->$VALUES:[Lcom/miui/home/recents/GestureStubView$EventPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/GestureStubView$EventPosition;
    .locals 1

    .line 150
    const-class v0, Lcom/miui/home/recents/GestureStubView$EventPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/GestureStubView$EventPosition;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/GestureStubView$EventPosition;
    .locals 1

    .line 150
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->$VALUES:[Lcom/miui/home/recents/GestureStubView$EventPosition;

    invoke-virtual {v0}, [Lcom/miui/home/recents/GestureStubView$EventPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/GestureStubView$EventPosition;

    return-object v0
.end method
