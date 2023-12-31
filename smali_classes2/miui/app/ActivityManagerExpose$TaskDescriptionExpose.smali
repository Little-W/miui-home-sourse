.class public Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;
.super Ljava/lang/Object;
.source "ActivityManagerExpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ActivityManagerExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescriptionExpose"
.end annotation


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final getIconFilename:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.app.ActivityManager$TaskDescription"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 11
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getIconFilename"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->getIconFilename:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;
    .locals 1

    .line 26
    new-instance v0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;

    invoke-direct {v0, p0}, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getIconFilename()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->getIconFilename:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/app/ActivityManagerExpose$TaskDescriptionExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
