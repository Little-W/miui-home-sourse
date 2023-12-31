.class public final enum Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;
.super Ljava/lang/Enum;
.source "StatusBarIconTypeAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_CANCEL:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_STARTED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field public static final enum ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "ANIM_STATUS_UNDEFINED"

    .line 108
    invoke-direct {v2, v5, v3, v4}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const/4 v3, 0x2

    const-string v5, "ANIM_STATUS_STARTED"

    .line 109
    invoke-direct {v2, v5, v4, v3}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v4

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const/4 v4, 0x3

    const-string v5, "ANIM_STATUS_STARTED_FOR_SYSTEM_UI"

    .line 110
    invoke-direct {v2, v5, v3, v4}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const/4 v3, 0x4

    const-string v5, "ANIM_STATUS_END"

    .line 111
    invoke-direct {v2, v5, v4, v3}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v4

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const/4 v4, 0x5

    const-string v5, "ANIM_STATUS_FINISHED"

    .line 112
    invoke-direct {v2, v5, v3, v4}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v3

    new-instance v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    const-string v3, "ANIM_STATUS_CANCEL"

    .line 113
    invoke-direct {v2, v3, v4, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_CANCEL:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    aput-object v2, v1, v4

    sput-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->$VALUES:[Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;
    .locals 1

    const-class v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->$VALUES:[Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->value:I

    return p0
.end method
