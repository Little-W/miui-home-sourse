.class final Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;
.super Ljava/lang/Object;
.source "BigIconUtil.kt"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/BigIconUtil;->getCurrentModeResource()Lcom/google/gson/JsonArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 0

    const-string p0, "shortcutInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget p0, p1, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 p1, 0x8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 40
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/BigIconUtil$currentModeResource$bigShortcutInfo$1;->test(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method
