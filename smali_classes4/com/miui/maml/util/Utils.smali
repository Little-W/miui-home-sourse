.class public Lcom/miui/maml/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/Utils$XmlTraverseListener;,
        Lcom/miui/maml/util/Utils$Point;,
        Lcom/miui/maml/util/Utils$GetChildWrapper;
    }
.end annotation


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID:I = -0x2

.field private static sAcrossUsersFullPermission:I = -0x2

.field private static sAcrossUsersPermission:I = -0x2

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 335
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D
    .locals 4

    .line 150
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    sub-double/2addr v0, v2

    .line 151
    iget-wide v2, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    iget-wide p0, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    sub-double/2addr v2, p0

    if-eqz p2, :cond_0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    .line 198
    invoke-static {p0, v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static arrContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 258
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 259
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 163
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 164
    invoke-static {v3, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static asserts(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "assert error"

    .line 45
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 500
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 1

    .line 203
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".0"

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 41
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 0

    .line 86
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 97
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return p2
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 66
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 0

    .line 71
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 82
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    .line 122
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 123
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 124
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    check-cast v2, Lorg/w3c/dom/Element;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 316
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 5

    .line 320
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 323
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 324
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    move-object p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 6

    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 305
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 306
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 307
    invoke-virtual {v4}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D
    .locals 2

    .line 291
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 292
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 297
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initContextIfNeed(Landroid/content/Context;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 36
    sput-object p0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 496
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 374
    :cond_0
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method static synthetic lambda$startActivityBg$0(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 458
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static mixAlpha(II)I
    .locals 1

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    .line 272
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    const/4 p1, 0x0

    .line 274
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    .line 208
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".0"

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static onMuiltDisplayType2()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "persist.sys.muiltdisplay_type"

    .line 492
    invoke-static {v1, v0}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "+"

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 217
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;
    .locals 7

    .line 174
    invoke-virtual {p1, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    move-result-object v0

    .line 175
    invoke-virtual {p2, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    move-result-object p2

    .line 176
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    iget-wide v3, p2, Lcom/miui/maml/util/Utils$Point;->x:D

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    iget-wide v5, p2, Lcom/miui/maml/util/Utils$Point;->y:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    const/4 p2, 0x0

    .line 177
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v3

    div-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double p2, v1, v3

    if-ltz p2, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    mul-double/2addr p1, v1

    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 183
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    mul-double/2addr p1, v1

    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 184
    invoke-virtual {v0, p0}, Lcom/miui/maml/util/Utils$Point;->Offset(Lcom/miui/maml/util/Utils$Point;)V

    return-object v0

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    .locals 0

    .line 287
    invoke-virtual {p1, p0, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V
    .locals 2

    .line 283
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .locals 2

    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_0

    .line 514
    invoke-static {p0}, Lcom/miui/maml/util/Utils;->rm(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 516
    :cond_0
    invoke-static {p0}, Landroid/miui/Shell;->remove(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static rm(Ljava/lang/String;)Z
    .locals 4

    .line 521
    invoke-static {p0}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 522
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 524
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 525
    array-length v2, p0

    if-lez v2, :cond_1

    .line 526
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 527
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/maml/util/Utils;->rm(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 465
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 466
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 468
    :cond_0
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    if-nez v0, :cond_1

    .line 469
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static splitByteArray(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0xa

    .line 420
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitByteArray(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static splitByteArray(Ljava/lang/String;I)[B
    .locals 4

    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 427
    array-length v0, p0

    .line 428
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 431
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static splitDoubleArray(Ljava/lang/String;)[D
    .locals 5

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 389
    array-length v0, p0

    .line 390
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 393
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static splitIntArray(Ljava/lang/String;)[I
    .locals 1

    const/16 v0, 0xa

    .line 401
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitIntArray(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static splitIntArray(Ljava/lang/String;I)[I
    .locals 4

    .line 405
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 408
    array-length v0, p0

    .line 409
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static splitStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 380
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget v1, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 443
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    :cond_0
    if-eqz v0, :cond_1

    .line 446
    :try_start_0
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    if-nez v0, :cond_1

    .line 447
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startActivity fail. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MamlUtil"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static startActivityBg(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 457
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/maml/util/-$$Lambda$Utils$tQv3vHfaQdRAXn7MgCZxLiyv_Z0;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/util/-$$Lambda$Utils$tQv3vHfaQdRAXn7MgCZxLiyv_Z0;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 476
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 477
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 479
    :cond_0
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    if-nez v0, :cond_1

    .line 480
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 0

    if-nez p0, :cond_0

    return-wide p1

    .line 224
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p1
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .locals 4

    .line 247
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 248
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 249
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .locals 5

    .line 235
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 236
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 237
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    .line 240
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->arrContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static triggerGC()V
    .locals 1

    .line 487
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 488
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    return-void
.end method

.method public static writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 504
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lmiuix/core/util/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 508
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
