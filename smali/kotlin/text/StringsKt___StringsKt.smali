.class Lkotlin/text/StringsKt___StringsKt;
.super Lkotlin/text/StringsKt___StringsJvmKt;
.source "_Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Strings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1699:1\n91#1,2:1700\n167#1,5:1702\n445#1,5:1707\n445#1,5:1712\n409#1:1717\n1071#1,2:1718\n410#1,2:1720\n1073#1:1722\n412#1:1723\n409#1:1724\n1071#1,2:1725\n410#1,2:1727\n1073#1:1729\n412#1:1730\n1071#1,3:1731\n437#1,2:1734\n437#1,2:1736\n693#1,4:1738\n662#1,4:1742\n678#1,4:1746\n725#1,4:1750\n792#1,5:1754\n833#1,3:1759\n836#1,3:1769\n851#1,3:1772\n854#1,3:1782\n949#1,3:1799\n921#1,4:1802\n910#1:1806\n1071#1,3:1807\n911#1:1810\n1071#1,3:1811\n940#1:1814\n1062#1,2:1815\n941#1:1817\n1062#1,2:1818\n1644#1,6:1820\n1674#1,7:1826\n352#2,7:1762\n352#2,7:1775\n352#2,7:1785\n352#2,7:1792\n*E\n*S KotlinDebug\n*F\n+ 1 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n50#1,2:1700\n58#1,5:1702\n373#1,5:1707\n382#1,5:1712\n391#1:1717\n391#1,2:1718\n391#1,2:1720\n391#1:1722\n391#1:1723\n400#1:1724\n400#1,2:1725\n400#1,2:1727\n400#1:1729\n400#1:1730\n409#1,3:1731\n421#1,2:1734\n430#1,2:1736\n620#1,4:1738\n635#1,4:1742\n649#1,4:1746\n712#1,4:1750\n785#1,5:1754\n808#1,3:1759\n808#1,3:1769\n821#1,3:1772\n821#1,3:1782\n880#1,3:1799\n890#1,4:1802\n900#1:1806\n900#1,3:1807\n900#1:1810\n910#1,3:1811\n932#1:1814\n932#1,2:1815\n932#1:1817\n940#1,2:1818\n1633#1,6:1820\n1661#1,7:1826\n808#1,7:1762\n821#1,7:1775\n835#1,7:1785\n853#1,7:1792\n*E\n"
.end annotation


# direct methods
.method public static final drop(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$drop"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 291
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested character count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
