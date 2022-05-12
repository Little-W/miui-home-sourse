.class final enum Lcom/miui/home/launcher/Workspace$PinchingState;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PinchingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/Workspace$PinchingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/Workspace$PinchingState;

.field public static final enum FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

.field public static final enum OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

.field public static final enum READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 927
    new-instance v0, Lcom/miui/home/launcher/Workspace$PinchingState;

    const-string v1, "READY_TO_EDIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/Workspace$PinchingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 928
    new-instance v0, Lcom/miui/home/launcher/Workspace$PinchingState;

    const-string v1, "FOLLOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/Workspace$PinchingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    .line 929
    new-instance v0, Lcom/miui/home/launcher/Workspace$PinchingState;

    const-string v1, "OVERRIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/launcher/Workspace$PinchingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    const/4 v0, 0x3

    .line 926
    new-array v0, v0, [Lcom/miui/home/launcher/Workspace$PinchingState;

    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->READY_TO_EDIT:Lcom/miui/home/launcher/Workspace$PinchingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->FOLLOW:Lcom/miui/home/launcher/Workspace$PinchingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/launcher/Workspace$PinchingState;->OVERRIDE:Lcom/miui/home/launcher/Workspace$PinchingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->$VALUES:[Lcom/miui/home/launcher/Workspace$PinchingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 926
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/Workspace$PinchingState;
    .locals 1

    .line 926
    const-class v0, Lcom/miui/home/launcher/Workspace$PinchingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Workspace$PinchingState;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/Workspace$PinchingState;
    .locals 1

    .line 926
    sget-object v0, Lcom/miui/home/launcher/Workspace$PinchingState;->$VALUES:[Lcom/miui/home/launcher/Workspace$PinchingState;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/Workspace$PinchingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/Workspace$PinchingState;

    return-object v0
.end method
