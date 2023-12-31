.class public final enum Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;
.super Ljava/lang/Enum;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppPredictStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

.field public static final enum APP_PREDICT_CLOSE:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

.field public static final enum APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

.field public static final enum APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 89
    new-instance v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    const/4 v1, 0x0

    const-string v2, "APP_PREDICT_UNINITIALIZED"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    .line 90
    new-instance v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    const/4 v2, 0x1

    const-string v3, "APP_PREDICT_CLOSE"

    invoke-direct {v0, v3, v2, v1}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_CLOSE:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    .line 91
    new-instance v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    const/4 v3, 0x2

    const-string v4, "APP_PREDICT_OPEN"

    invoke-direct {v0, v4, v3, v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    .line 88
    sget-object v4, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_CLOSE:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_OPEN:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->$VALUES:[Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;
    .locals 1

    .line 88
    const-class v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;
    .locals 1

    .line 88
    sget-object v0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->$VALUES:[Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->value:I

    return p0
.end method
