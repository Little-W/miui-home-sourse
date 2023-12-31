.class public Lmiui/content/res/ConfigurationExpose;
.super Ljava/lang/Object;
.source "ConfigurationExpose.java"


# static fields
.field private static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final windowConfiguration:Lcom/miui/expose/utils/FieldHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.content.res.Configuration"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 9
    new-instance v0, Lcom/miui/expose/utils/FieldHolder;

    sget-object v1, Lmiui/content/res/ConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lmiui/content/res/WindowConfigurationExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const-string v3, "windowConfiguration"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/FieldHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ClassHolder;)V

    sput-object v0, Lmiui/content/res/ConfigurationExpose;->windowConfiguration:Lcom/miui/expose/utils/FieldHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmiui/content/res/ConfigurationExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/content/res/ConfigurationExpose;
    .locals 1

    .line 24
    new-instance v0, Lmiui/content/res/ConfigurationExpose;

    invoke-direct {v0, p0}, Lmiui/content/res/ConfigurationExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getWindowConfiguration()Lmiui/content/res/WindowConfigurationExpose;
    .locals 1

    .line 16
    sget-object v0, Lmiui/content/res/ConfigurationExpose;->windowConfiguration:Lcom/miui/expose/utils/FieldHolder;

    iget-object p0, p0, Lmiui/content/res/ConfigurationExpose;->instance:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/miui/expose/utils/FieldHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/content/res/WindowConfigurationExpose;->box(Ljava/lang/Object;)Lmiui/content/res/WindowConfigurationExpose;

    move-result-object p0

    return-object p0
.end method
