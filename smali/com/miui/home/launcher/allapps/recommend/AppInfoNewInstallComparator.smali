.class public Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;
.super Ljava/lang/Object;
.source "AppInfoNewInstallComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I
    .locals 2

    .line 10
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLoadTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getLoadTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/recommend/AppInfoNewInstallComparator;->compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I

    move-result p1

    return p1
.end method
