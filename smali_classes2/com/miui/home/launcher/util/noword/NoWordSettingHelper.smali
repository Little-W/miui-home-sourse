.class public final Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;
.super Ljava/lang/Object;
.source "NoWordSettingHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

.field private static mSwitchingNoWordModel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSwitchingNoWordModel()Z
    .locals 0

    .line 58
    sget-boolean p0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->mSwitchingNoWordModel:Z

    return p0
.end method

.method public final setSwitchingNoWordModel(Z)V
    .locals 0

    .line 58
    sput-boolean p1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->mSwitchingNoWordModel:Z

    return-void
.end method
