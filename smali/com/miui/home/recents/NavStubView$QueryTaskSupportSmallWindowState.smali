.class final enum Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;
.super Ljava/lang/Enum;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QueryTaskSupportSmallWindowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field public static final enum FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field public static final enum IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field public static final enum RUNNING:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3978
    new-instance v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 3979
    new-instance v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->RUNNING:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 3980
    new-instance v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    const-string v1, "FINISH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    const/4 v0, 0x3

    .line 3977
    new-array v0, v0, [Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->RUNNING:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->$VALUES:[Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3977
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;
    .locals 1

    .line 3977
    const-class v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;
    .locals 1

    .line 3977
    sget-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->$VALUES:[Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    invoke-virtual {v0}, [Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    return-object v0
.end method
